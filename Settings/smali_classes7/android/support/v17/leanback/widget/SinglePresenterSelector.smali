.class public final Landroid/support/v17/leanback/widget/SinglePresenterSelector;
.super Landroid/support/v17/leanback/widget/PresenterSelector;
.source "SinglePresenterSelector.java"


# instance fields
.field private final mPresenter:Landroid/support/v17/leanback/widget/Presenter;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 0
    .param p1, "presenter"    # Landroid/support/v17/leanback/widget/Presenter;

    .line 27
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PresenterSelector;-><init>()V

    .line 28
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SinglePresenterSelector;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    .line 29
    return-void
.end method


# virtual methods
.method public getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SinglePresenterSelector;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    return-object v0
.end method

.method public getPresenters()[Landroid/support/v17/leanback/widget/Presenter;
    .locals 3

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v17/leanback/widget/Presenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SinglePresenterSelector;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
