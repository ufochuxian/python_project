.class Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;->toastReplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    .prologue
    .line 785
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity$7;->a:Lcom/jiliguala/niuwa/module/interact/course/InteractLessonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 788
    const-string v0, "\u4e0a\u6b21\u5b66\u4e60\u5230\u6b64\u73af\u8282\uff0c\u4e3a\u60a8\u7eed\u64ad"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 789
    return-void
.end method
