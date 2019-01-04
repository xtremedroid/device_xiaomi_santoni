.class public Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "EmulateDisplayCutoutPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY:Ljava/lang/String; = "display_cutout_emulation"


# instance fields
.field private final mAvailable:Z

.field private final mOverlayManager:Lcom/android/settings/wrapper/OverlayManagerWrapper;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreference:Landroid/support/v7/preference/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wrapper/OverlayManagerWrapper;

    invoke-direct {v1}, Lcom/android/settings/wrapper/OverlayManagerWrapper;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/wrapper/OverlayManagerWrapper;)V

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/wrapper/OverlayManagerWrapper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "overlayManager"    # Lcom/android/settings/wrapper/OverlayManagerWrapper;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p3, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mOverlayManager:Lcom/android/settings/wrapper/OverlayManagerWrapper;

    .line 55
    iput-object p2, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 56
    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->getOverlayInfos()[Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mAvailable:Z

    .line 57
    return-void
.end method

.method private getOverlayInfos()[Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mOverlayManager:Lcom/android/settings/wrapper/OverlayManagerWrapper;

    const-string v1, "android"

    .line 149
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wrapper/OverlayManagerWrapper;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 150
    .local v0, "overlayInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 151
    const-string v2, "com.android.internal.display_cutout_emulation"

    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    iget-object v3, v3, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->category:Ljava/lang/String;

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 150
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 156
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    return-object v1
.end method

.method private setEmulationOverlay(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->getOverlayInfos()[Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    move-result-object v0

    .line 91
    .local v0, "overlays":[Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;
    const/4 v1, 0x0

    .line 92
    .local v1, "currentPackageName":Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    move v1, v3

    .end local v1    # "currentPackageName":Ljava/lang/String;
    .local v4, "currentPackageName":Ljava/lang/String;
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 93
    .local v5, "o":Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;
    invoke-virtual {v5}, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 94
    iget-object v4, v5, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->packageName:Ljava/lang/String;

    .line 92
    .end local v5    # "o":Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 99
    :cond_2
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 101
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 105
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 106
    iget-object v1, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mOverlayManager:Lcom/android/settings/wrapper/OverlayManagerWrapper;

    invoke-virtual {v1, v4, v3, v3}, Lcom/android/settings/wrapper/OverlayManagerWrapper;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_1

    .line 108
    .end local v1    # "result":Z
    :cond_5
    iget-object v1, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mOverlayManager:Lcom/android/settings/wrapper/OverlayManagerWrapper;

    invoke-virtual {v1, p1, v3}, Lcom/android/settings/wrapper/OverlayManagerWrapper;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result v1

    .line 110
    .restart local v1    # "result":Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 111
    return v1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 75
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->setPreference(Landroid/support/v7/preference/ListPreference;)V

    .line 77
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, "display_cutout_emulation"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mAvailable:Z

    return v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 161
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 162
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->setEmulationOverlay(Ljava/lang/String;)Z

    .line 163
    iget-object v0, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 164
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 86
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->setEmulationOverlay(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method setPreference(Landroid/support/v7/preference/ListPreference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/ListPreference;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    .line 82
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 10
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 116
    invoke-direct {p0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->getOverlayInfos()[Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    move-result-object v0

    .line 118
    .local v0, "overlays":[Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 119
    .local v1, "pkgs":[Ljava/lang/CharSequence;
    array-length v3, v1

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 121
    .local v3, "labels":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 122
    .local v4, "current":I
    const-string v5, ""

    const/4 v6, 0x0

    aput-object v5, v1, v6

    .line 123
    iget-object v5, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f120581

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 125
    move v5, v4

    move v4, v6

    .local v4, "i":I
    .local v5, "current":I
    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    .line 126
    aget-object v7, v0, v4

    .line 127
    .local v7, "o":Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;
    add-int/lit8 v8, v4, 0x1

    iget-object v9, v7, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->packageName:Ljava/lang/String;

    aput-object v9, v1, v8

    .line 128
    invoke-virtual {v7}, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 129
    add-int/lit8 v5, v4, 0x1

    .line 125
    .end local v7    # "o":Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    .end local v4    # "i":I
    :cond_1
    nop

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 134
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v7, v1, v2

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 135
    invoke-virtual {v4, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_2

    .line 136
    :catch_0
    move-exception v4

    .line 137
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    aget-object v7, v1, v2

    aput-object v7, v3, v2

    .line 132
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 141
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 142
    iget-object v2, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 143
    iget-object v2, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 144
    iget-object v2, p0, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    aget-object v4, v3, v5

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method
