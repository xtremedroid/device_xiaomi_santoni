.class Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;
.super Ljava/lang/Object;
.source "OPCustomFingeprintAnimVideoPreference.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$playButton:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    .line 186
    iput-object p1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    iput-object p2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->val$playButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 190
    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    iget-object v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    iget-object v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->access$002(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Z)Z

    .line 193
    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    iget-object v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 195
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 204
    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 200
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 210
    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->access$000(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->access$100(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    iget-object v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    iget-object v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    iget-object v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 216
    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->val$playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    iget-object v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    iget-object v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;->val$playButton:Landroid/widget/ImageView;

    .line 220
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    .line 223
    :cond_2
    return-void
.end method
