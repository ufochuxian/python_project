.class Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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

.field final synthetic b:Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$2;->b:Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$2;->b:Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$2;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;->access$100(Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter;Landroid/view/View;)V

    .line 203
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 199
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/course/category/adapter/CourseSelectAdapter$2;->a(Ljava/lang/Void;)V

    return-void
.end method
