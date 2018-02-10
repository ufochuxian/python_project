.class public Lcom/jiliguala/niuwa/logic/b/a/f;
.super Lcom/jiliguala/niuwa/logic/b/a/b;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/b/a/b;-><init>()V

    .line 16
    iput p1, p0, Lcom/jiliguala/niuwa/logic/b/a/f;->b:I

    .line 17
    return-void
.end method

.method public constructor <init>(ILcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "mcPcSubTaskTicket"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/b/a/b;-><init>()V

    .line 20
    iput p1, p0, Lcom/jiliguala/niuwa/logic/b/a/f;->b:I

    .line 21
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/b/a/f;->c:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .line 22
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/jiliguala/niuwa/logic/b/a/f;->b:I

    return v0
.end method

.method public b()Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/b/a/f;->c:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    return-object v0
.end method
