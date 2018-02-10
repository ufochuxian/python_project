.class Lcom/jiliguala/niuwa/module/course/main/CourseActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


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
    .line 175
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$3;->a:Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 189
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 178
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$3;->a:Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->access$402(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;I)I

    .line 183
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/CourseActivity$3;->a:Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;->access$500(Lcom/jiliguala/niuwa/module/course/main/CourseActivity;)Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/course/main/adapter/CoursePagerAdapter;->getItem(I)Lcom/jiliguala/niuwa/module/course/main/fragment/SubCourseFragment;

    .line 185
    return-void
.end method
