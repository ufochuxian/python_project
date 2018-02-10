.class public abstract Lcom/jiliguala/niuwa/logic/l/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Lcom/jiliguala/niuwa/logic/l/b/b;

.field private c:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/jiliguala/niuwa/logic/l/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/l/d/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/b;->a:Lcom/jiliguala/niuwa/logic/l/b/b;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/b;->a:Lcom/jiliguala/niuwa/logic/l/b/b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/l/b/b;->a()V

    .line 26
    :cond_0
    return-void
.end method

.method public abstract a(Lcom/jiliguala/niuwa/logic/l/a/a;)V
.end method

.method public a(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/l/d/b;->c:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    .line 61
    return-void
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 1
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "i"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/b;->c:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/b;->c:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;->shareCancel()V

    .line 57
    :cond_0
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 1
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/b;->a:Lcom/jiliguala/niuwa/logic/l/b/b;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/b;->a:Lcom/jiliguala/niuwa/logic/l/b/b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/l/b/b;->d()V

    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/b;->a:Lcom/jiliguala/niuwa/logic/l/b/b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/l/b/b;->i()V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/b;->c:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/b;->c:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;->shareComplete()V

    .line 40
    :cond_1
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "i"    # I
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/b;->c:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/l/d/b;->c:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;->shareError()V

    .line 48
    :cond_0
    return-void
.end method
