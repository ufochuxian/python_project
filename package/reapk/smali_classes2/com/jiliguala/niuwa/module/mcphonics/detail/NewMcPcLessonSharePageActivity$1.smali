.class Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shareCancel()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public shareComplete()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/NewMcPcLessonSharePageActivity;->onBack()V

    .line 69
    return-void
.end method

.method public shareError()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
