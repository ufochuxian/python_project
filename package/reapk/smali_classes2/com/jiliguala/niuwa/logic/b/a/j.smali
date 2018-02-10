.class public Lcom/jiliguala/niuwa/logic/b/a/j;
.super Lcom/jiliguala/niuwa/logic/b/a/b;
.source "SourceFile"


# instance fields
.field private b:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;I)V
    .locals 0
    .param p1, "treasure"    # Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;
    .param p2, "eventType"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/b/a/b;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/b/a/j;->b:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;

    .line 16
    iput p2, p0, Lcom/jiliguala/niuwa/logic/b/a/j;->a:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "theme"    # Ljava/lang/String;
    .param p2, "eventType"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/b/a/b;-><init>()V

    .line 20
    iput p2, p0, Lcom/jiliguala/niuwa/logic/b/a/j;->a:I

    .line 21
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/b/a/j;->c:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/b/a/j;->b:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/b/a/j;->c:Ljava/lang/String;

    return-object v0
.end method
