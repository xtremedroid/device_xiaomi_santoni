.class Landroid/support/v17/leanback/app/DetailsFragment$9;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/DetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/DetailsFragment;

    .line 354
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment$9;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 3
    .param p1, "itemViewHolder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "rowViewHolder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p4, "row"    # Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$9;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    .line 359
    .local v0, "position":I
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment$9;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedSubPosition()I

    move-result v1

    .line 362
    .local v1, "subposition":I
    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment$9;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v2, v0, v1}, Landroid/support/v17/leanback/app/DetailsFragment;->onRowSelected(II)V

    .line 363
    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment$9;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/DetailsFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    if-eqz v2, :cond_0

    .line 364
    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment$9;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/DetailsFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 367
    :cond_0
    return-void
.end method
