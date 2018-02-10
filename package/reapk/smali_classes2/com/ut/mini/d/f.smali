.class public abstract Lcom/ut/mini/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMsgObject"    # Ljava/lang/Object;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ut/mini/d/f;->a:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/ut/mini/d/f;->a:Ljava/lang/Object;

    .line 13
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/ut/mini/d/f;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/ut/mini/d/b;)Z
    .locals 1
    .param p1, "lPlugin"    # Lcom/ut/mini/d/b;

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/ut/mini/d/b;)Ljava/lang/Object;
    .locals 1
    .param p1, "lPlugin"    # Lcom/ut/mini/d/b;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ut/mini/d/f;->a:Ljava/lang/Object;

    return-object v0
.end method
