.class public Ljavax/jmdns/impl/NameRegister$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/NameRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static volatile a:Ljavax/jmdns/impl/NameRegister;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljavax/jmdns/impl/NameRegister;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Ljavax/jmdns/impl/NameRegister$b;->a:Ljavax/jmdns/impl/NameRegister;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljavax/jmdns/impl/NameRegister$d;

    invoke-direct {v0}, Ljavax/jmdns/impl/NameRegister$d;-><init>()V

    sput-object v0, Ljavax/jmdns/impl/NameRegister$b;->a:Ljavax/jmdns/impl/NameRegister;

    .line 231
    :cond_0
    sget-object v0, Ljavax/jmdns/impl/NameRegister$b;->a:Ljavax/jmdns/impl/NameRegister;

    return-object v0
.end method

.method public static a(Ljavax/jmdns/impl/NameRegister;)V
    .locals 2
    .param p0, "register"    # Ljavax/jmdns/impl/NameRegister;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 214
    sget-object v0, Ljavax/jmdns/impl/NameRegister$b;->a:Ljavax/jmdns/impl/NameRegister;

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The register can only be set once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    if-eqz p0, :cond_1

    .line 218
    sput-object p0, Ljavax/jmdns/impl/NameRegister$b;->a:Ljavax/jmdns/impl/NameRegister;

    .line 220
    :cond_1
    return-void
.end method
