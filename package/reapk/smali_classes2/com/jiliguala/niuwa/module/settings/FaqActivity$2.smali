.class Lcom/jiliguala/niuwa/module/settings/FaqActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/feedback/util/IUnreadCountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/FaqActivity;->checkFeedBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/FaqActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/FaqActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/FaqActivity;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/FaqActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/FaqActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 186
    return-void
.end method

.method public onSuccess(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 176
    if-lez p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/FaqActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/FaqActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->access$100(Lcom/jiliguala/niuwa/module/settings/FaqActivity;Z)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/FaqActivity$2;->a:Lcom/jiliguala/niuwa/module/settings/FaqActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->access$100(Lcom/jiliguala/niuwa/module/settings/FaqActivity;Z)V

    goto :goto_0
.end method
