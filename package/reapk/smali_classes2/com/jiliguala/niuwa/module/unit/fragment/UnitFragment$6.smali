.class Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment$OptionChoiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$6;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCourseReportShareChosen(Z)V
    .locals 1
    .param p1, "unitShareReport"    # Z

    .prologue
    .line 654
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$6;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$1000(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;Z)V

    .line 655
    return-void
.end method

.method public onCourseShareChosen()V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$6;->a:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->access$900(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V

    .line 650
    return-void
.end method
