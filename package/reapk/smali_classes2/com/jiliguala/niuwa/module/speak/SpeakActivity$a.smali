.class Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/speak/SpeakActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/FrameLayout$LayoutParams;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Z)V
    .locals 0
    .param p1, "viewToAdd"    # Landroid/view/View;
    .param p2, "fl"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p3, "remoceScoreView"    # Z

    .prologue
    .line 2223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2224
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;->a:Landroid/view/View;

    .line 2225
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;->b:Landroid/widget/FrameLayout$LayoutParams;

    .line 2226
    iput-boolean p3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$a;->c:Z

    .line 2227
    return-void
.end method
