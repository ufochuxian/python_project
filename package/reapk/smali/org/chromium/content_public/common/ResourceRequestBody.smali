.class public final Lorg/chromium/content_public/common/ResourceRequestBody;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# instance fields
.field private mEncodedNativeForm:[B


# direct methods
.method private constructor <init>([B)V
    .locals 0
    .param p1, "encodedNativeForm"    # [B

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/chromium/content_public/common/ResourceRequestBody;->mEncodedNativeForm:[B

    .line 32
    return-void
.end method

.method public static createFromBytes([B)Lorg/chromium/content_public/common/ResourceRequestBody;
    .locals 2
    .param p0, "httpBody"    # [B

    .prologue
    .line 56
    invoke-static {p0}, Lorg/chromium/content_public/common/ResourceRequestBody;->nativeCreateResourceRequestBodyFromBytes([B)[B

    move-result-object v0

    .line 57
    .local v0, "encodedNativeForm":[B
    invoke-static {v0}, Lorg/chromium/content_public/common/ResourceRequestBody;->createFromEncodedNativeForm([B)Lorg/chromium/content_public/common/ResourceRequestBody;

    move-result-object v1

    return-object v1
.end method

.method private static createFromEncodedNativeForm([B)Lorg/chromium/content_public/common/ResourceRequestBody;
    .locals 1
    .param p0, "encodedNativeForm"    # [B
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lorg/chromium/content_public/common/ResourceRequestBody;

    invoke-direct {v0, p0}, Lorg/chromium/content_public/common/ResourceRequestBody;-><init>([B)V

    return-object v0
.end method

.method private getEncodedNativeForm()[B
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/content_public/common/ResourceRequestBody;->mEncodedNativeForm:[B

    return-object v0
.end method

.method private static native nativeCreateResourceRequestBodyFromBytes([B)[B
.end method
