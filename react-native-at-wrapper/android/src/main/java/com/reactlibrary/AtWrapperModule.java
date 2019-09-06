package com.reactlibrary;

import com.atinternet.tracker.ATInternet;
import com.atinternet.tracker.Tracker;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

public class AtWrapperModule extends ReactContextBaseJavaModule {

    private Tracker tracker;

    public AtWrapperModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.tracker = ATInternet.getInstance().getDefaultTracker();
    }

    @Override
    public String getName() {
        return "AtWrapper";
    }

    @ReactMethod
    public void sendScreen(int siteId, String log, String screenName, Callback callback) {
        this.tracker.setSiteId(siteId, null, true);
        this.tracker.setLog(log, null, true);
        this.tracker.Screens().add(screenName).sendView();
        callback.invoke("Done");
    }

    @ReactMethod
    public void getSdkVersion(Callback callback) {
        callback.invoke(this.tracker.getSdkVersion());
    }
}
