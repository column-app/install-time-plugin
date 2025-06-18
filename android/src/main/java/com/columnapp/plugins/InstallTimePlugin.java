package com.example.installtime;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "InstallTime")
public class InstallTimePlugin extends Plugin {

    @PluginMethod
    public void getInstallTime(PluginCall call) {
        try {
            PackageManager pm = getContext().getPackageManager();
            PackageInfo packageInfo = pm.getPackageInfo(getContext().getPackageName(), 0);
            long firstInstallTime = packageInfo.firstInstallTime;
            JSObject ret = new JSObject();
            ret.put("installTime", firstInstallTime);
            call.resolve(ret);
        } catch (Exception e) {
            call.reject("Failed to get install time: " + e.getMessage());
        }
    }
}
