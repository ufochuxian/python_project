.class public Lorg/xwalk/core/XWalkPreferences;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALLOW_UNIVERSAL_ACCESS_FROM_FILE:Ljava/lang/String; = "allow-universal-access-from-file"

.field public static final ANIMATABLE_XWALK_VIEW:Ljava/lang/String; = "animatable-xwalk-view"

.field public static final ENABLE_EXTENSIONS:Ljava/lang/String; = "enable-extensions"

.field public static final ENABLE_JAVASCRIPT:Ljava/lang/String; = "enable-javascript"

.field public static final ENABLE_THEME_COLOR:Ljava/lang/String; = "enable-theme-color"

.field public static final JAVASCRIPT_CAN_OPEN_WINDOW:Ljava/lang/String; = "javascript-can-open-window"

.field public static final PROFILE_NAME:Ljava/lang/String; = "profile-name"

.field public static final REMOTE_DEBUGGING:Ljava/lang/String; = "remote-debugging"

.field public static final SPATIAL_NAVIGATION:Ljava/lang/String; = "enable-spatial-navigation"

.field public static final SUPPORT_MULTIPLE_WINDOWS:Ljava/lang/String; = "support-multiple-windows"

.field private static coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

.field private static getBooleanValueStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private static getIntegerValueStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private static getStringValueStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private static getValueStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private static setValueStringStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private static setValueStringbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private static setValueStringintMethod:Lorg/xwalk/core/ReflectMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 133
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setValue"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/xwalk/core/XWalkPreferences;->setValueStringbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 157
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setValue"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/xwalk/core/XWalkPreferences;->setValueStringintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 181
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setValue"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/xwalk/core/XWalkPreferences;->setValueStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 205
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getValue"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/xwalk/core/XWalkPreferences;->getValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 228
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getBooleanValue"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/xwalk/core/XWalkPreferences;->getBooleanValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 251
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getIntegerValue"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/xwalk/core/XWalkPreferences;->getIntegerValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 274
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getStringValue"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/xwalk/core/XWalkPreferences;->getStringValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanValue(Ljava/lang/String;)Z
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-static {}, Lorg/xwalk/core/XWalkPreferences;->reflectionInit()V

    .line 217
    :try_start_0
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->getBooleanValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 225
    :goto_0
    return v1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 220
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 225
    goto :goto_0
.end method

.method public static getIntegerValue(Ljava/lang/String;)I
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-static {}, Lorg/xwalk/core/XWalkPreferences;->reflectionInit()V

    .line 240
    :try_start_0
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->getIntegerValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 248
    :goto_0
    return v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 243
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 248
    goto :goto_0
.end method

.method public static getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {}, Lorg/xwalk/core/XWalkPreferences;->reflectionInit()V

    .line 263
    :try_start_0
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->getStringValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-object v1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 266
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    .line 271
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getValue(Ljava/lang/String;)Z
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-static {}, Lorg/xwalk/core/XWalkPreferences;->reflectionInit()V

    .line 194
    :try_start_0
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->getValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 202
    :goto_0
    return v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 197
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Crosswalk\'s APIs are not ready yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    move v1, v2

    .line 202
    goto :goto_0
.end method

.method static reflectionInit()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 278
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-eqz v1, :cond_0

    .line 297
    .local v0, "bridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 280
    .end local v0    # "bridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->initEmbeddedMode()V

    .line 282
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v1

    sput-object v1, Lorg/xwalk/core/XWalkPreferences;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 283
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_1

    .line 284
    const-class v1, Lorg/xwalk/core/XWalkPreferences;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectClass(Ljava/lang/Class;)V

    goto :goto_0

    .line 288
    :cond_1
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v2, "XWalkPreferencesBridge"

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 290
    .restart local v0    # "bridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->setValueStringbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setValue"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v1, v7, v0, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 291
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->setValueStringintMethod:Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setValue"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v1, v7, v0, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 292
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->setValueStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setValue"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v7, v0, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 293
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->getValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getValue"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v7, v0, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 294
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->getBooleanValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getBooleanValue"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v7, v0, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 295
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->getIntegerValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getIntegerValue"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v7, v0, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 296
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->getStringValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getStringValue"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v7, v0, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0
.end method

.method public static setValue(Ljava/lang/String;I)V
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 143
    invoke-static {}, Lorg/xwalk/core/XWalkPreferences;->reflectionInit()V

    .line 145
    :try_start_0
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->setValueStringintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 148
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->setValueStringintMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 149
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->setValueStringintMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public static setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 167
    invoke-static {}, Lorg/xwalk/core/XWalkPreferences;->reflectionInit()V

    .line 169
    :try_start_0
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->setValueStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 172
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->setValueStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p0, v2, v4

    aput-object p1, v2, v5

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 173
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->setValueStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public static setValue(Ljava/lang/String;Z)V
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 119
    invoke-static {}, Lorg/xwalk/core/XWalkPreferences;->reflectionInit()V

    .line 121
    :try_start_0
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->setValueStringbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 124
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->setValueStringbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 125
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->setValueStringbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method
