.class Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;
.super Ljava/lang/Thread;
.source "BatteryEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameAndIconLoader"
.end annotation


# instance fields
.field private mAbort:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    const-string v0, "BatteryUsage Icon Loader"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->mAbort:Z

    .line 66
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->mAbort:Z

    .line 70
    return-void
.end method

.method public run()V
    .locals 3

    .line 76
    :goto_0
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->mAbort:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryEntry;

    .line 85
    .local v1, "be":Lcom/android/settings/fuelgauge/BatteryEntry;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryEntry;->loadNameAndIcon()V

    .line 87
    .end local v1    # "be":Lcom/android/settings/fuelgauge/BatteryEntry;
    goto :goto_0

    .line 78
    :cond_1
    :goto_1
    :try_start_1
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 79
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    :cond_2
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 82
    monitor-exit v0

    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
