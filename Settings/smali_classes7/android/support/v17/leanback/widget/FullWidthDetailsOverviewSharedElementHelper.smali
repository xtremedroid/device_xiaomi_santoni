.class public Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;
.super Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;
.source "FullWidthDetailsOverviewSharedElementHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$TransitionTimeOutRunnable;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DEFAULT_TIMEOUT:J = 0x1388L

.field static final TAG:Ljava/lang/String; = "DetailsTransitionHelper"


# instance fields
.field mActivityToRunTransition:Landroid/app/Activity;

.field private mAutoStartSharedElementTransition:Z

.field mSharedElementName:Ljava/lang/String;

.field private mStartedPostpone:Z

.field mViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$Listener;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mAutoStartSharedElementTransition:Z

    return-void
.end method


# virtual methods
.method public getAutoStartSharedElementTransition()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mAutoStartSharedElementTransition:Z

    return v0
.end method

.method public onBindLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    .line 124
    iput-object p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    .line 125
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mAutoStartSharedElementTransition:Z

    if-nez v0, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getLogoViewHolder()Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 138
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getDetailsDescriptionFrame()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$1;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method

.method public setAutoStartSharedElementTransition(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 106
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mAutoStartSharedElementTransition:Z

    .line 107
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sharedElementName"    # Ljava/lang/String;

    .line 73
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->setSharedElementEnterTransition(Landroid/app/Activity;Ljava/lang/String;J)V

    .line 74
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sharedElementName"    # Ljava/lang/String;
    .param p3, "timeoutMs"    # J

    .line 78
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 82
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mActivityToRunTransition:Landroid/app/Activity;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mSharedElementName:Ljava/lang/String;

    .line 83
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    return-void

    .line 86
    :cond_3
    iput-object p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mActivityToRunTransition:Landroid/app/Activity;

    .line 87
    iput-object p2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mSharedElementName:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->getSharedElementEnterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "transition":Ljava/lang/Object;
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->setAutoStartSharedElementTransition(Z)V

    .line 93
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mActivityToRunTransition:Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 94
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_5

    .line 95
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$TransitionTimeOutRunnable;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$TransitionTimeOutRunnable;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;)V

    invoke-virtual {v1, v2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    :cond_5
    return-void
.end method

.method public startPostponedEnterTransition()V
    .locals 2

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$2;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$2;-><init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    return-void
.end method

.method startPostponedEnterTransitionInternal()V
    .locals 1

    .line 182
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mStartedPostpone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mActivityToRunTransition:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->mStartedPostpone:Z

    .line 189
    :cond_0
    return-void
.end method
