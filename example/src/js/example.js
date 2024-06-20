import { CapacitorCloudkitAPI } from 'capacitor-cloudkit-api';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    CapacitorCloudkitAPI.echo({ value: inputValue })
}
