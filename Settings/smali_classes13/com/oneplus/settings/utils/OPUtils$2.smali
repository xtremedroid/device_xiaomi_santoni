.class Lcom/oneplus/settings/utils/OPUtils$2;
.super Ljava/lang/Object;
.source "OPUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/utils/OPUtils;->restoreBackupEntranceInLauncher(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/oneplus/settings/utils/OPUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 756
    iget-object v0, p0, Lcom/oneplus/settings/utils/OPUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 757
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "com.oneplus.backuprestore"

    .line 758
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "com.oneplus.backuprestore.activity.BootActivity"

    .line 774
    .local v2, "mainActivityName":Ljava/lang/String;
    const-string v3, "oneplus_backuprestore_disabled"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 776
    :try_start_0
    const-string v3, "OPUtils"

    const-string v6, "restore entry"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v3, p0, Lcom/oneplus/settings/utils/OPUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 778
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 782
    const-string v5, "oneplus_backuprestore_disabled"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_0

    .line 783
    :catch_0
    move-exception v3

    .line 787
    :cond_0
    :goto_0
    return-void
.end method
