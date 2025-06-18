import { InstallTime } from 'install-time';

window.test = async () => {
    let time = await InstallTime.getInstallTime();
    if (time) {
        // open an alert with the install time
        alert(`Install time: ${time}`);
    }
}
