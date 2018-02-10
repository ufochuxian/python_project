.class public Lcom/jiliguala/niuwa/logic/b/a/c;
.super Lcom/jiliguala/niuwa/logic/b/a/b;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "classicon"    # Ljava/lang/String;
    .param p2, "cls"    # Z

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/b/a/b;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/b/a/c;->b:Ljava/lang/String;

    .line 15
    iput-boolean p2, p0, Lcom/jiliguala/niuwa/logic/b/a/c;->c:Z

    .line 16
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/b/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mClassIcon"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/b/a/c;->b:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "cls"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/logic/b/a/c;->c:Z

    .line 32
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/b/a/c;->c:Z

    return v0
.end method
