.class public Lcom/jiliguala/niuwa/logic/db/daometa/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "COURSE_ID"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/e;->a:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "COURSE_ID"    # Ljava/lang/String;
    .param p2, "PROGRESS"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/e;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/db/daometa/e;->b:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "COURSE_ID"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/e;->a:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/db/daometa/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "PROGRESS"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/db/daometa/e;->b:Ljava/lang/String;

    .line 41
    return-void
.end method
