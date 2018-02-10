.class Lcom/mob/tools/a/n$5;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/n;->getHttpPatch(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/a/n;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/n;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mob/tools/a/n;

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/mob/tools/a/n$5;->a:Lcom/mob/tools/a/n;

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1232
    const-string v0, "PATCH"

    return-object v0
.end method
