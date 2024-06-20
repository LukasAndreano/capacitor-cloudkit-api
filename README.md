# capacitor-cloudkit-api

Plugin for using [Apple CloudKit Key-Value API](https://developer.apple.com/documentation/cloudkit/) in your Capacitor Apps.

## Install

```bash
npm install capacitor-cloudkit-api
npx cap sync
```

## Preparation
Add capability in `Signing & Capabilities` in Xcode project settings called `iCloud`:
![](https://github.com/lukasandreano/capacitor-cloudkit-api/blob/main/docs/icloud.png?raw=true)

Next, enable `Key-value storage` and `CloudKit` settings, and create any container by clicking on `+` button:
![](https://github.com/lukasandreano/capacitor-cloudkit-api/blob/main/docs/cloudkit-settings.png?raw=true)

## Usage
```typescript
import {CapacitorCloudkitAPI} from 'capacitor-cloudkit-api';

const saveData = async (key: string, value: string): Promise<{
    key: string;
    value: string;
}> => {
    const result = await CapacitorCloudkitAPI.saveKeyValue({
        key,
        value,
    });
    
    return result
}

const getData = async (key: string): Promise<{
    key: string;
    value: string;
}> => {
    const result = await CapacitorCloudkitAPI.getKeyValue({
        key
    });

    return result
}
```

## API

<docgen-index>

* [`saveKeyValue(...)`](#savekeyvalue)
* [`getKeyValue(...)`](#getkeyvalue)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### saveKeyValue(...)

```typescript
saveKeyValue(options: { key: string; value: string; }) => Promise<{ key: string; value: string; }>
```

| Param         | Type                                         |
| ------------- | -------------------------------------------- |
| **`options`** | <code>{ key: string; value: string; }</code> |

**Returns:** <code>Promise&lt;{ key: string; value: string; }&gt;</code>

--------------------


### getKeyValue(...)

```typescript
getKeyValue(options: { key: string; }) => Promise<{ key: string; value: string; }>
```

| Param         | Type                          |
| ------------- | ----------------------------- |
| **`options`** | <code>{ key: string; }</code> |

**Returns:** <code>Promise&lt;{ key: string; value: string; }&gt;</code>

--------------------

</docgen-api>
