.class Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private final mInputText:Landroid/widget/EditText;

.field private mPosted:Z

.field private mSelectionEnd:I

.field private mSelectionStart:I


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0
    .param p1, "inputText"    # Landroid/widget/EditText;

    .line 2288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2289
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    .line 2290
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 2303
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    if-eqz v0, :cond_0

    .line 2304
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    .line 2307
    :cond_0
    return-void
.end method

.method public post(II)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .line 2293
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    .line 2294
    iput p2, p0, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    .line 2296
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    if-nez v0, :cond_0

    .line 2297
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 2298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    .line 2300
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 2311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    .line 2312
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 2313
    return-void
.end method
