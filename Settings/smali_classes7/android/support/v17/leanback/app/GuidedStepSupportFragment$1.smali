.class Landroid/support/v17/leanback/app/GuidedStepSupportFragment$1;
.super Ljava/lang/Object;
.source "GuidedStepSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/GuidedStepSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/GuidedStepSupportFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/GuidedStepSupportFragment;

    .line 1077
    iput-object p1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/GuidedStepSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGuidedActionEditCanceled(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 1
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 1096
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/GuidedStepSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onGuidedActionEditCanceled(Landroid/support/v17/leanback/widget/GuidedAction;)V

    .line 1097
    return-void
.end method

.method public onGuidedActionEditedAndProceed(Landroid/support/v17/leanback/widget/GuidedAction;)J
    .locals 2
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 1091
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/GuidedStepSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onGuidedActionEditedAndProceed(Landroid/support/v17/leanback/widget/GuidedAction;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onImeClose()V
    .locals 2

    .line 1086
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/GuidedStepSupportFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->runImeAnimations(Z)V

    .line 1087
    return-void
.end method

.method public onImeOpen()V
    .locals 2

    .line 1081
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/GuidedStepSupportFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->runImeAnimations(Z)V

    .line 1082
    return-void
.end method
