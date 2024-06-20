import { CapacitorCloudkitAPI } from 'capacitor-cloudkit-api';

window.saveData = async () => {
    await CapacitorCloudkitAPI.saveKeyValue({
        key: 'exampleKey',
        value: 'exampleValue'
    });
}

window.getData = async () => {
    const result = await CapacitorCloudkitAPI.getKeyValue({
        key: 'exampleKey'
    });
    console.log(result);
}