.class Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->addEventObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Lcom/jiliguala/niuwa/logic/b/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$1;->a:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/b/a/a;)V
    .locals 1
    .param p1, "loginEvent"    # Lcom/jiliguala/niuwa/logic/b/a/a;

    .prologue
    .line 110
    iget v0, p1, Lcom/jiliguala/niuwa/logic/b/a/a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$1;->a:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->access$000(Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;)V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x1035
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    check-cast p1, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$1;->a(Lcom/jiliguala/niuwa/logic/b/a/a;)V

    return-void
.end method
