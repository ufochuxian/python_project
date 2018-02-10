.class Lcom/jiliguala/niuwa/module/course/main/CourseActivity$2;
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
    .line 144
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$2;->a:Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$2;->a:Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->access$300(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)Lcom/jiliguala/niuwa/common/widget/MultiViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$2;->a:Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->access$200(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->setCurrentItem(I)V

    .line 162
    return-void
.end method
