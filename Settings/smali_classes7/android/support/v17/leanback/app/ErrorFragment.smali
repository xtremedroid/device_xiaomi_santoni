.class public Landroid/support/v17/leanback/app/ErrorFragment;
.super Landroid/support/v17/leanback/app/BrandedFragment;
.source "ErrorFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mButton:Landroid/widget/Button;

.field private mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mButtonText:Ljava/lang/String;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mErrorFrame:Landroid/view/ViewGroup;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsBackgroundTranslucent:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrandedFragment;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mIsBackgroundTranslucent:Z

    return-void
.end method

.method private static getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 236
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 237
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 238
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 239
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    return-object v1
.end method

.method private static setTopMargin(Landroid/widget/TextView;I)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "topMargin"    # I

    .line 243
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 244
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 245
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    return-void
.end method

.method private updateBackground()V
    .locals 3

    .line 194
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mErrorFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mErrorFrame:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 198
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mErrorFrame:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mErrorFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mIsBackgroundTranslucent:Z

    if-eqz v2, :cond_1

    sget v2, Landroid/support/v17/leanback/R$color;->lb_error_background_color_translucent:I

    goto :goto_0

    :cond_1
    sget v2, Landroid/support/v17/leanback/R$color;->lb_error_background_color_opaque:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 204
    :cond_2
    :goto_1
    return-void
.end method

.method private updateButton()V
    .locals 2

    .line 221
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mButtonText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 227
    :cond_1
    return-void
.end method

.method private updateImageDrawable()V
    .locals 2

    .line 214
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    :cond_1
    return-void
.end method

.method private updateMessage()V
    .locals 2

    .line 207
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    :cond_1
    return-void
.end method


# virtual methods
.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 91
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 159
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 108
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 125
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isBackgroundTranslucent()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mIsBackgroundTranslucent:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 165
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_error_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "root":Landroid/view/View;
    sget v1, Landroid/support/v17/leanback/R$id;->error_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mErrorFrame:Landroid/view/ViewGroup;

    .line 168
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorFragment;->updateBackground()V

    .line 170
    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mErrorFrame:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v1, p3}, Landroid/support/v17/leanback/app/ErrorFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 172
    sget v1, Landroid/support/v17/leanback/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mImageView:Landroid/widget/ImageView;

    .line 173
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorFragment;->updateImageDrawable()V

    .line 175
    sget v1, Landroid/support/v17/leanback/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mTextView:Landroid/widget/TextView;

    .line 176
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorFragment;->updateMessage()V

    .line 178
    sget v1, Landroid/support/v17/leanback/R$id;->button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mButton:Landroid/widget/Button;

    .line 179
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorFragment;->updateButton()V

    .line 181
    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mTextView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v17/leanback/app/ErrorFragment;->getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 182
    .local v1, "metrics":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_error_under_image_baseline_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 184
    .local v2, "underImageBaselineMargin":I
    iget-object v3, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mTextView:Landroid/widget/TextView;

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Landroid/support/v17/leanback/app/ErrorFragment;->setTopMargin(Landroid/widget/TextView;I)V

    .line 186
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_error_under_message_baseline_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 188
    .local v3, "underMessageBaselineMargin":I
    iget-object v4, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mButton:Landroid/widget/Button;

    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v5, v3, v5

    invoke-static {v4, v5}, Landroid/support/v17/leanback/app/ErrorFragment;->setTopMargin(Landroid/widget/TextView;I)V

    .line 190
    return-object v0
.end method

.method public onStart()V
    .locals 1

    .line 231
    invoke-super {p0}, Landroid/support/v17/leanback/app/BrandedFragment;->onStart()V

    .line 232
    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mErrorFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 233
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 77
    iput-object p1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    if-eqz p1, :cond_2

    .line 79
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 80
    .local v0, "opacity":I
    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mIsBackgroundTranslucent:Z

    .line 83
    .end local v0    # "opacity":I
    :cond_2
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorFragment;->updateBackground()V

    .line 84
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorFragment;->updateMessage()V

    .line 85
    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .line 151
    iput-object p1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 152
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorFragment;->updateButton()V

    .line 153
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mButtonText:Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorFragment;->updateButton()V

    .line 136
    return-void
.end method

.method public setDefaultBackground(Z)V
    .locals 1
    .param p1, "translucent"    # Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mIsBackgroundTranslucent:Z

    .line 60
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorFragment;->updateBackground()V

    .line 61
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorFragment;->updateMessage()V

    .line 62
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 100
    iput-object p1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorFragment;->updateImageDrawable()V

    .line 102
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 117
    iput-object p1, p0, Landroid/support/v17/leanback/app/ErrorFragment;->mMessage:Ljava/lang/CharSequence;

    .line 118
    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorFragment;->updateMessage()V

    .line 119
    return-void
.end method
