---
title: "antd-v4 与 v3 中表单校验的差异"
date: 2021-01-22T00:19:07+08:00
draft: false
---

在  v3 中，表单校验一般写成如下形式：

```javascript
{getFieldDecorator('inputContent', {
            rules: [{
              required: true, 
              message: '请输入内容!',
            }],
          })(
    <Input />
)}
```

或者这样：

```javascript
<FormItem {...formItemLayout1} label='SKU ID' >
    {getFieldDecorator('add_sku_id', {
         rules: [
             { required: true, message: '请选择' },
             //自定义的检验函数
             { validator: (rule, value, callback) => this.handleConfirmSkuId(rule, value, callback) },
         ],
     },
     )(
         <Select
             allowClear
             optionFilterProp="children"
             showSearch
             placeholder="SKU ID"
         >
             {
                 skuList.length > 0 ?
                     skuList.map((item, index) => (
                         <Option key={item.sku_id} value={(item.sku_id).toString()}>{item.sku_id}</Option>
                    ))
                : null
             }
         </Select>,
     )}
 </FormItem>
```

十分繁琐，且可读性差

在 v4 中，这个问题得以解决：

```javascript
<Form.Item
    label="Username"
    name="username"
    rules={[{ required: true, message: 'Please input your username!' }]}
>
	<Input />
</Form.Item>
```

直接在 Form.Item 的 rules 中定义校验规则，下面是一些例子：

```javascript
<FormItem
    label="Phone"
    name="phone"
    rules={
        [
            {
                required: true,
                max: 11,
                whitespace: true,
                message: '请输入11位数电话号码'
            },
            {
                required: true,
                pattern: /^[0-9]+$/,
                message: '请输入数字'
            }
    	]
   }
>
    <Input placeholder="Phone number" allowClear />
</FormItem>
```

两个 FormItem 之间有依赖的情况：

```javascript
<FormItem
    label="Password"
    name="password"
    dependencies={['rePassword']}
    hasFeedback
    rules={
        [
            { required: true, message: '请输入密码' },
            ({ getFieldValue }) => ({
               validator(_, value) {
                   if (!value || getFieldValue('rePassword') === value) {
                       return Promise.resolve();
                   }	
                   return Promise.reject(new Error('两次密码不一致!'));
               },
            }),
        ]
    }
>
	<Input placeholder="Password" allowClear />
</FormItem>

<FormItem
    label="Re-Password"
    name="rePassword"
    dependencies={['password']}
    hasFeedback
    rules={
        [
            { required: true, message: '请确认密码' },
            ({ getFieldValue }) => ({
                validator(_, value) {
                    if(!value || getFieldValue('password') === value) {
                    	return Promise.resolve();
                    }
                    return Promise.reject(new Error('两次密码不一致!'))
                }
            }),
        ]
    }
>
	<Input placeholder="Re-Password" allowClear />
</FormItem>
```

