.class Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$1;
.super Ljava/lang/Object;
.source "PlaybackTransportRowPresenter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;

    .line 551
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$1;->this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;)V
    .locals 2
    .param p1, "itemViewHolder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "data"    # Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;

    .line 555
    move-object v0, p3

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;->mRowViewHolder:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    .line 556
    .local v0, "vh":Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;
    iget-object v1, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-ne v1, p1, :cond_0

    iget-object v1, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSelectedItem:Ljava/lang/Object;

    if-eq v1, p2, :cond_1

    .line 557
    :cond_0
    iput-object p1, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 558
    iput-object p2, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSelectedItem:Ljava/lang/Object;

    .line 559
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->dispatchItemSelection()V

    .line 561
    :cond_1
    return-void
.end method
