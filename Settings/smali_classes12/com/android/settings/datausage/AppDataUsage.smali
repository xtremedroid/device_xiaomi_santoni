.class public Lcom/android/settings/datausage/AppDataUsage;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;
    }
.end annotation


# static fields
.field public static final ARG_APP_ITEM:Ljava/lang/String; = "app_item"

.field public static final ARG_NETWORK_TEMPLATE:Ljava/lang/String; = "network_template"

.field public static final ARG_SUBID:Ljava/lang/String; = "arg_subid"

.field private static final KEY_APP_LIST:Ljava/lang/String; = "app_list"

.field private static final KEY_APP_SETTINGS:Ljava/lang/String; = "app_settings"

.field private static final KEY_BACKGROUND_USAGE:Ljava/lang/String; = "background_usage"

.field private static final KEY_CYCLE:Ljava/lang/String; = "cycle"

.field private static final KEY_DISABLE_MOBILE:Ljava/lang/String; = "disabled_mobile"

.field private static final KEY_DISABLE_WIFI:Ljava/lang/String; = "disabled_wifi"

.field private static final KEY_FOREGROUND_USAGE:Ljava/lang/String; = "foreground_usage"

.field private static final KEY_PF_CYCLE:Ljava/lang/String; = "pf_cycle"

.field private static final KEY_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrict_background"

.field private static final KEY_TOTAL_USAGE:Ljava/lang/String; = "total_usage"

.field private static final KEY_UNRESTRICTED_DATA:Ljava/lang/String; = "unrestricted_data_saver"

.field private static final LOADER_APP_PREF:I = 0x3

.field private static final LOADER_CHART_DATA:I = 0x2

.field public static OSUidDetail:Lcom/android/settingslib/net/UidDetail; = null

.field public static SYSTEM_UID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AppDataUsage"


# instance fields
.field private mAppItem:Lcom/android/settingslib/AppItem;

.field private mAppList:Landroid/support/v7/preference/PreferenceCategory;

.field private final mAppPrefCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Landroid/util/ArraySet<",
            "Landroid/support/v7/preference/Preference;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppSettings:Landroid/support/v7/preference/Preference;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mBackgroundUsage:Landroid/support/v7/preference/Preference;

.field private mChartData:Lcom/android/settingslib/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mCycle:Lcom/android/settings/datausage/SpinnerPreference;

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleText:Landroid/support/v7/preference/Preference;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDisabledData:Landroid/support/v14/preference/SwitchPreference;

.field private mDisabledWifi:Landroid/support/v14/preference/SwitchPreference;

.field private mEnd:J

.field private mForegroundUsage:Landroid/support/v7/preference/Preference;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/CharSequence;

.field private mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field private mPackageName:Ljava/lang/String;

.field private final mPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mStart:J

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSubId:I

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTotalUsage:Landroid/support/v7/preference/Preference;

.field private mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    const/16 v0, 0x3e8

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->SYSTEM_UID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    .line 95
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mSubId:I

    .line 470
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$1;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 492
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$2;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 511
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$3;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppPrefCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/AppDataUsage;

    .line 74
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datausage/AppDataUsage;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->bindData()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/AppDataUsage;

    .line 74
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/AppDataUsage;

    .line 74
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/AppDataUsage;

    .line 74
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/net/ChartData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/AppDataUsage;

    .line 74
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/datausage/AppDataUsage;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datausage/AppDataUsage;
    .param p1, "x1"    # Lcom/android/settingslib/net/ChartData;

    .line 74
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/NetworkPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/AppDataUsage;

    .line 74
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPolicy:Landroid/net/NetworkPolicy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/AppDataUsage;

    .line 74
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/AppDataUsage;

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/datausage/AppDataUsage;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/AppDataUsage;

    .line 74
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/AppDataUsage;

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datausage/AppDataUsage;

    .line 74
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroid/support/v7/preference/PreferenceCategory;

    return-object v0
.end method

.method private addUid(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 388
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private bindData()V
    .locals 13

    .line 398
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 404
    .local v0, "now":J
    const/4 v2, 0x0

    .line 405
    .local v2, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    iget-wide v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    move-wide v8, v0

    move-object v10, v2

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v2

    .line 406
    iget-wide v3, v2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v5, v2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v11, v3, v5

    .line 407
    .local v11, "backgroundBytes":J
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    iget-wide v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    move-object v10, v2

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v2

    .line 408
    iget-wide v3, v2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v5, v2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v3, v5

    .end local v0    # "now":J
    .end local v2    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    goto :goto_1

    .line 399
    .end local v11    # "backgroundBytes":J
    :cond_1
    :goto_0
    move-wide v3, v1

    .local v3, "foregroundBytes":J
    move-wide v11, v1

    .line 408
    .restart local v11    # "backgroundBytes":J
    :goto_1
    move-wide v0, v3

    .line 412
    .end local v3    # "foregroundBytes":J
    .local v0, "foregroundBytes":J
    add-long v2, v11, v0

    .line 413
    .local v2, "totalBytes":J
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 415
    .local v4, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroid/support/v7/preference/Preference;

    invoke-static {v4, v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroid/support/v7/preference/Preference;

    invoke-static {v4, v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroid/support/v7/preference/Preference;

    invoke-static {v4, v11, v12}, Lcom/oneplus/settings/utils/OPUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 418
    return-void
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    .line 422
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 423
    .local v1, "uidPolicy":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private getUnrestrictData()Z
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;->isWhitelisted(I)Z

    move-result v0

    return v0

    .line 430
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateFireWallState()V
    .locals 7

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v0, v1}, Lcom/android/settings/datausage/OPDataUsageUtils;->getApplicationInfoByUid(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 559
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 560
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 561
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_4

    .line 562
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPFirewallUtils;->selectFirewallRuleByPkg(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/utils/OPFirewallRule;

    move-result-object v3

    .line 563
    .local v3, "role":Lcom/oneplus/settings/utils/OPFirewallRule;
    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/oneplus/settings/utils/OPFirewallRule;->getMobile()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 564
    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Lcom/oneplus/settings/utils/OPFirewallRule;->getMobile()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 566
    :cond_1
    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 568
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/oneplus/settings/utils/OPFirewallRule;->getWlan()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 569
    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Lcom/oneplus/settings/utils/OPFirewallRule;->getWlan()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_2

    move v1, v4

    nop

    :cond_2
    invoke-virtual {v5, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    .line 571
    :cond_3
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 575
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "role":Lcom/oneplus/settings/utils/OPFirewallRule;
    :cond_4
    :goto_2
    return-void
.end method

.method private updatePrefs(ZZ)V
    .locals 3
    .param p1, "restrictBackground"    # Z
    .param p2, "unrestrictData"    # Z

    .line 368
    nop

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 368
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 370
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 372
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_2

    .line 375
    if-eqz p1, :cond_1

    .line 376
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setVisible(Z)V

    goto :goto_0

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setVisible(Z)V

    .line 379
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, p2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 380
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 383
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 467
    const/16 v0, 0x157

    return v0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .line 547
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    .line 550
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 136
    new-instance v0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 140
    .local v0, "args":Landroid/os/Bundle;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    nop

    .line 145
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "app_item"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/AppItem;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    .line 146
    if-eqz v0, :cond_1

    const-string v2, "network_template"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    goto :goto_1

    .line 147
    :cond_1
    move-object v2, v1

    :goto_1
    iput-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    .line 148
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v2, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 150
    .local v2, "context":Landroid/content/Context;
    nop

    .line 151
    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v3

    .line 150
    invoke-static {v2, v3}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    .line 153
    .end local v2    # "context":Landroid/content/Context;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    const/4 v3, 0x0

    if-nez v2, :cond_5

    .line 154
    const/4 v2, -0x1

    if-eqz v0, :cond_3

    const-string v4, "uid"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_2

    .line 155
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 156
    .local v4, "uid":I
    :goto_2
    if-ne v4, v2, :cond_4

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 160
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    .line 161
    new-instance v2, Lcom/android/settingslib/AppItem;

    invoke-direct {v2, v4}, Lcom/android/settingslib/AppItem;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    .line 162
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    invoke-virtual {v2, v4}, Lcom/android/settingslib/AppItem;->addUid(I)V

    .line 164
    .end local v4    # "uid":I
    :goto_3
    goto :goto_5

    .line 165
    :cond_5
    move v2, v3

    .local v2, "i":I
    :goto_4
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v4, v4, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 166
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v4, v4, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 169
    .end local v2    # "i":I
    :cond_6
    :goto_5
    const v2, 0x7f160013

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/AppDataUsage;->addPreferencesFromResource(I)V

    .line 171
    const-string v2, "total_usage"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroid/support/v7/preference/Preference;

    .line 172
    const-string v2, "foreground_usage"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroid/support/v7/preference/Preference;

    .line 173
    const-string v2, "background_usage"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroid/support/v7/preference/Preference;

    .line 176
    if-eqz v0, :cond_7

    const-string v2, "arg_subid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_6

    :cond_7
    move v2, v3

    :goto_6
    iput v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mSubId:I

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mSubId:I

    invoke-static {v2, v4}, Lcom/android/settings/datausage/OPDataUsageUtils;->getDataUsageSectionTimeMillByAccountDay(Landroid/content/Context;I)[J

    move-result-object v2

    .line 178
    .local v2, "section":[J
    aget-wide v4, v2, v3

    iput-wide v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    .line 179
    const/4 v4, 0x1

    aget-wide v5, v2, v4

    iput-wide v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    iget-wide v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "sectionTextString":Ljava/lang/String;
    const-string v6, "pf_cycle"

    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleText:Landroid/support/v7/preference/Preference;

    .line 182
    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleText:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    const-string v6, "disabled_mobile"

    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroid/support/v14/preference/SwitchPreference;

    .line 184
    const-string v6, "disabled_wifi"

    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroid/support/v14/preference/SwitchPreference;

    .line 185
    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v6, v6, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 188
    .local v6, "userId":I
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v7, v7, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v7}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x3e7

    if-eq v6, v7, :cond_8

    .line 191
    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 193
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->updateFireWallState()V

    goto :goto_7

    .line 195
    :cond_8
    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v3}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 196
    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v3}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 198
    :goto_7
    const-string v7, "cycle"

    invoke-virtual {p0, v7}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/datausage/SpinnerPreference;

    iput-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    .line 199
    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    invoke-virtual {v7, v3}, Lcom/android/settings/datausage/SpinnerPreference;->setVisible(Z)V

    .line 202
    new-instance v7, Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    iget-object v10, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {v7, v8, v9, v10, v3}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    iput-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    .line 204
    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v7, v7, Lcom/android/settingslib/AppItem;->key:I

    if-lez v7, :cond_f

    .line 205
    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-eqz v7, :cond_9

    .line 207
    :try_start_1
    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    .line 208
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v9, v9, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 207
    invoke-virtual {v7, v8, v3, v9}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 209
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 210
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v8}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 211
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    goto :goto_8

    .line 212
    :catch_0
    move-exception v7

    .line 215
    :cond_9
    :goto_8
    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v7, v7, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v7}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 216
    const-string v7, "unrestricted_data_saver"

    invoke-virtual {p0, v7}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 217
    const-string v7, "restrict_background"

    invoke-virtual {p0, v7}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    goto :goto_9

    .line 219
    :cond_a
    const-string v7, "restrict_background"

    invoke-virtual {p0, v7}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 221
    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v7, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 222
    const-string v7, "unrestricted_data_saver"

    invoke-virtual {p0, v7}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 224
    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v7, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 226
    :goto_9
    new-instance v7, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 227
    const-string v7, "app_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    .line 229
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    .line 230
    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    const-string v8, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 233
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    .line 234
    .local v8, "matchFound":Z
    iget-object v9, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 235
    .local v10, "packageName":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v11, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v11, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v7, v11, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 237
    const/4 v8, 0x1

    .line 238
    goto :goto_b

    .line 240
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_b
    goto :goto_a

    .line 241
    :cond_c
    :goto_b
    if-nez v8, :cond_d

    .line 242
    const-string v3, "app_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 243
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    .line 246
    :cond_d
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-le v1, v4, :cond_e

    .line 247
    const-string v1, "app_list"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroid/support/v7/preference/PreferenceCategory;

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v3, 0x3

    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v9, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppPrefCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v3, v4, v9}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_c

    .line 250
    :cond_e
    const-string v1, "app_list"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 252
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "matchFound":Z
    :goto_c
    goto :goto_d

    .line 253
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 254
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v3, v1}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v7, v7, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v3, v7, v4}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v3

    .line 255
    .local v3, "uidDetail":Lcom/android/settingslib/net/UidDetail;
    iget-object v4, v3, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 256
    iget-object v4, v3, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 259
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 261
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 262
    .local v7, "info":Landroid/content/pm/UserInfo;
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 263
    .local v8, "pm":Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_10

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v4, v7}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 270
    .end local v4    # "um":Landroid/os/UserManager;
    .end local v7    # "info":Landroid/content/pm/UserInfo;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    .line 272
    const-string v4, "unrestricted_data_saver"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 273
    const-string v4, "app_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 274
    const-string v4, "restrict_background"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 275
    const-string v4, "app_list"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 283
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "uidDetail":Lcom/android/settingslib/net/UidDetail;
    :goto_d
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    sget v3, Lcom/android/settings/datausage/AppDataUsage;->SYSTEM_UID:I

    if-ne v1, v3, :cond_11

    sget-object v1, Lcom/android/settings/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settingslib/net/UidDetail;

    if-eqz v1, :cond_11

    .line 284
    sget-object v1, Lcom/android/settings/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settingslib/net/UidDetail;

    iget-object v1, v1, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 285
    sget-object v1, Lcom/android/settings/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settingslib/net/UidDetail;

    iget-object v1, v1, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 287
    :cond_11
    return-void

    .line 141
    .end local v2    # "section":[J
    .end local v5    # "sectionTextString":Ljava/lang/String;
    .end local v6    # "userId":I
    :catch_1
    move-exception v1

    .line 142
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onDataSaverChanged(Z)V
    .locals 0
    .param p1, "isDataSaving"    # Z

    .line 536
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 293
    sget-object v0, Lcom/android/settings/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settingslib/net/UidDetail;

    if-eqz v0, :cond_0

    .line 294
    sget-object v0, Lcom/android/settings/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settingslib/net/UidDetail;

    iget-object v0, v0, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 295
    sput-object v1, Lcom/android/settings/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settingslib/net/UidDetail;

    .line 298
    :cond_0
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    .line 299
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 315
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    .line 316
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 319
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v4, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/settings/datausage/DataSaverBackend;->setIsBlacklisted(ILjava/lang/String;Z)V

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    .line 326
    return v1

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-ne p1, v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/settings/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    .line 329
    return v1

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    .line 334
    .local v0, "uid":I
    new-instance v8, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x1

    move-object v2, v8

    move-object v3, p0

    move v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;-><init>(Lcom/android/settings/datausage/AppDataUsage;Landroid/content/Context;IZI)V

    .line 335
    .local v2, "ruleTask":Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;
    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 336
    .end local v0    # "uid":I
    .end local v2    # "ruleTask":Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    .line 338
    .restart local v0    # "uid":I
    new-instance v8, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;-><init>(Lcom/android/settings/datausage/AppDataUsage;Landroid/content/Context;IZI)V

    .line 339
    .restart local v2    # "ruleTask":Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;
    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 342
    .end local v0    # "uid":I
    .end local v2    # "ruleTask":Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;
    :cond_3
    :goto_0
    return v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 347
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 351
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v3, v3, Lcom/android/settingslib/AppItem;->key:I

    .line 352
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 351
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 357
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 359
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .line 303
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    .line 304
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPolicy:Landroid/net/NetworkPolicy;

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    .line 309
    invoke-static {v2, v3}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 308
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    .line 311
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 435
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 437
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 438
    .local v0, "pkg":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .line 439
    .local v3, "uid":I
    if-eqz v0, :cond_1

    .line 441
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v5, v5, Lcom/android/settingslib/AppItem;->key:I

    .line 442
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 441
    invoke-virtual {v4, v0, v5}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 445
    goto :goto_1

    .line 443
    :catch_0
    move-exception v4

    .line 444
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "AppDataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping UID because cannot find package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 450
    .local v4, "showInfoButton":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 451
    .local v5, "activity":Landroid/app/Activity;
    nop

    .line 452
    invoke-static {v5, p0, v1}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 454
    invoke-virtual {v1, v3}, Lcom/android/settings/widget/EntityHeaderController;->setUid(I)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 455
    invoke-virtual {v1, v4}, Lcom/android/settings/widget/EntityHeaderController;->setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 456
    invoke-virtual {v1, v2, v2}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 458
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 459
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 460
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;

    move-result-object v1

    .line 462
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 463
    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .line 540
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    .line 543
    :cond_0
    return-void
.end method

.method updatePrefs()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 364
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    .line 365
    return-void
.end method
