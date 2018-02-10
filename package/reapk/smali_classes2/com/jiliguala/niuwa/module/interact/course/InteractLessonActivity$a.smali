.class Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0
    .param p1, "viewToAdd"    # Landroid/view/View;
    .param p2, "fl"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$a;->a:Landroid/view/View;

    .line 1080
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$a;->b:Landroid/widget/FrameLayout$LayoutParams;

    .line 1081
    return-void
.end method
