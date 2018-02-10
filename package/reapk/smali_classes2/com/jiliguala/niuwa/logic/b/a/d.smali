.class public Lcom/jiliguala/niuwa/logic/b/a/d;
.super Lcom/jiliguala/niuwa/logic/b/a/b;
.source "SourceFile"


# instance fields
.field public b:I

.field private c:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/b/a/b;-><init>()V

    .line 14
    iput p1, p0, Lcom/jiliguala/niuwa/logic/b/a/d;->b:I

    .line 15
    return-void
.end method

.method public constructor <init>(ILcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "unitData"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
    .param p3, "subTaskId"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/b/a/b;-><init>()V

    .line 18
    iput p1, p0, Lcom/jiliguala/niuwa/logic/b/a/d;->b:I

    .line 19
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/b/a/d;->c:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .line 20
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/b/a/d;->d:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/b/a/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/b/a/d;->c:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    return-object v0
.end method
