.class Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;
.source "OPAppDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final SELECTION_GAINED:I = 0x1

.field private static final SELECTION_LOST:I = 0x0

.field private static final SELECTION_UNCHANGED:I = -0x1


# instance fields
.field private mSelectionStatus:I

.field final synthetic this$0:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

.field final synthetic val$dragElevation:F


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;IIF)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .line 97
    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    iput p4, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->val$dragElevation:F

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;-><init>(II)V

    .line 114
    const/4 p4, -0x1

    iput p4, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->mSelectionStatus:I

    return-void
.end method


# virtual methods
.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 121
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 124
    iget v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->mSelectionStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 125
    iget-object v0, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 126
    iget v2, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->mSelectionStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->val$dragElevation:F

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 125
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    .line 127
    iput v1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->mSelectionStatus:I

    .line 129
    :cond_1
    return-void
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "source"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 102
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->onItemMove(II)V

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .line 133
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 134
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 135
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->mSelectionStatus:I

    goto :goto_0

    .line 136
    :cond_0
    if-nez p2, :cond_1

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->mSelectionStatus:I

    .line 139
    :cond_1
    :goto_0
    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .line 109
    return-void
.end method
