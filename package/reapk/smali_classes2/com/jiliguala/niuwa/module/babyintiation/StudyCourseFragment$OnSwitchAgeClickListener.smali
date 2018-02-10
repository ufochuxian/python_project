.class public Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$OnSwitchAgeClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSwitchAgeClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$OnSwitchAgeClickListener;->this$0:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 750
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 751
    .local v0, "age":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$OnSwitchAgeClickListener;->this$0:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->access$200(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->switchAge(Ljava/lang/String;)V

    .line 754
    :cond_0
    return-void
.end method
