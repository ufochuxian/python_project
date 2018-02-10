.class Lcom/jiliguala/niuwa/module/course/main/CourseActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->onStartCourse()V
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
    .line 307
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$4;->a:Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 310
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$4;->a:Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->access$300(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)Lcom/jiliguala/niuwa/common/widget/MultiViewPager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->setCurrentItem(IZ)V

    .line 311
    return-void
.end method
