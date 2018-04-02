.class Lcom/jiliguala/niuwa/MyApplication$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/MyApplication;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/MyApplication;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/MyApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/MyApplication;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/jiliguala/niuwa/MyApplication$3;->a:Lcom/jiliguala/niuwa/MyApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method
