.class public abstract Lcom/ut/mini/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x2

.field public static final b:I = 0x8

.field public static final c:I = 0x5

.field public static final d:I = 0x7

.field public static final e:I = 0x9

.field public static final f:I = 0x10000


# instance fields
.field private g:Lcom/ut/mini/d/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ut/mini/d/b;->g:Lcom/ut/mini/d/c;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ut/mini/d/c;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ut/mini/d/b;->g:Lcom/ut/mini/d/c;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "aPluginContextKey"    # I

    .prologue
    .line 49
    return-void
.end method

.method public abstract a(ILjava/lang/Object;)V
.end method

.method a(Lcom/ut/mini/d/c;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/ut/mini/d/b;->g:Lcom/ut/mini/d/c;

    .line 18
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 1
    .param p1, "aOutPluginMsgId"    # I
    .param p2, "aMsgObject"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-static {}, Lcom/ut/mini/d/e;->a()Lcom/ut/mini/d/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/d/e;->a(ILjava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public abstract f()[I
.end method

.method public g()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method
