.class public Lcom/jiliguala/niuwa/logic/db/daometa/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "SPLAHS_ID"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/f;->a:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "SPLAHS_ID"    # Ljava/lang/String;
    .param p2, "TIMES"    # Ljava/lang/Integer;
    .param p3, "CLICKED"    # Ljava/lang/Boolean;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/f;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/f;->b:Ljava/lang/Integer;

    .line 24
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/db/daometa/f;->c:Ljava/lang/Boolean;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "CLICKED"    # Ljava/lang/Boolean;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/f;->c:Ljava/lang/Boolean;

    .line 51
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "TIMES"    # Ljava/lang/Integer;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/f;->b:Ljava/lang/Integer;

    .line 43
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "SPLAHS_ID"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/f;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/f;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/f;->c:Ljava/lang/Boolean;

    return-object v0
.end method
