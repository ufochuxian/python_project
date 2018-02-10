.class Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shareCancel()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public shareComplete()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/McPcLessonSharePageActivity;->onBack()V

    .line 63
    return-void
.end method

.method public shareError()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
