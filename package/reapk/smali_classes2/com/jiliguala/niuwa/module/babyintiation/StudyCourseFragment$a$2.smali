.class Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;

    .prologue
    .line 886
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a$2;->b:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 889
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a$2;->b:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a$2;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->b(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;Landroid/view/View;)V

    .line 890
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 886
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a$2;->a(Ljava/lang/Void;)V

    return-void
.end method
