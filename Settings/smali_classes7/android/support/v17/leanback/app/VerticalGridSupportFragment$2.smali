.class Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;
.super Ljava/lang/Object;
.source "VerticalGridSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/VerticalGridSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/VerticalGridSupportFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/VerticalGridSupportFragment;

    .line 113
    iput-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V
    .locals 2
    .param p1, "itemViewHolder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "rowViewHolder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p4, "row"    # Landroid/support/v17/leanback/widget/Row;

    .line 117
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    .line 119
    .local v0, "position":I
    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->gridOnItemSelected(I)V

    .line 120
    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 124
    :cond_0
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 113
    check-cast p4, Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V

    return-void
.end method
