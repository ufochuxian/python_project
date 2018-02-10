.class public Lcom/jiliguala/niuwa/logic/b/a/a;
.super Lcom/jiliguala/niuwa/logic/b/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/b/a/a$a;
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/b/a/b;-><init>()V

    .line 11
    iput p1, p0, Lcom/jiliguala/niuwa/logic/b/a/a;->a:I

    .line 12
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/b/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/b/a/a;->b:Ljava/lang/String;

    .line 20
    return-void
.end method
