.class Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->moveToPos(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$2;->c:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    iput p2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$2;->a:I

    iput-boolean p3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$2;->c:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->access$100(Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$2;->a:I

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment$2;->b:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 320
    return-void
.end method
