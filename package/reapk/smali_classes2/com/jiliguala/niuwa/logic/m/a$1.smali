.class Lcom/jiliguala/niuwa/logic/m/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/m/a;->onUnZipSuccess(Ljava/lang/String;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/logic/m/a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/m/a;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/m/a;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/m/a$1;->b:Lcom/jiliguala/niuwa/logic/m/a;

    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/m/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/m/a$1;->b:Lcom/jiliguala/niuwa/logic/m/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/m/a$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/m/a;->a(Lcom/jiliguala/niuwa/logic/m/a;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 194
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/m/a$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
