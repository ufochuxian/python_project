.class Lcom/jiliguala/niuwa/module/course/main/CourseActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/course/main/CourseActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$1;->a:Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 139
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$1;->a:Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->access$000(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$1;->a:Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->access$100(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->x()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 140
    return-void
.end method
