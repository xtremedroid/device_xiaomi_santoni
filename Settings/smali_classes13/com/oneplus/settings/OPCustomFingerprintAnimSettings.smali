.class public Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPCustomFingerprintAnimSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 51
    new-instance v0, Lcom/oneplus/settings/OPCustomFingerprintAnimSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/OPCustomFingerprintAnimSettings$1;-><init>(Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 83
    const/16 v0, 0x270f

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 68
    iput-object p1, p0, Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f160077

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;->addPreferencesFromResource(I)V

    .line 63
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .line 73
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 74
    return-void
.end method
