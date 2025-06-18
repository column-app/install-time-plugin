import { InstallTime } from 'install-time';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    InstallTime.echo({ value: inputValue })
}
