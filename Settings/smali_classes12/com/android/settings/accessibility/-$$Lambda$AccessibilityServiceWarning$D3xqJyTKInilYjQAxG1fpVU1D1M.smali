.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$AccessibilityServiceWarning$D3xqJyTKInilYjQAxG1fpVU1D1M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$AccessibilityServiceWarning$D3xqJyTKInilYjQAxG1fpVU1D1M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityServiceWarning$D3xqJyTKInilYjQAxG1fpVU1D1M;

    invoke-direct {v0}, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityServiceWarning$D3xqJyTKInilYjQAxG1fpVU1D1M;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityServiceWarning$D3xqJyTKInilYjQAxG1fpVU1D1M;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$AccessibilityServiceWarning$D3xqJyTKInilYjQAxG1fpVU1D1M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->lambda$createCapabilitiesDialog$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
