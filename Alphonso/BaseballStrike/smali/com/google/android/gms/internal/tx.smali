.class final enum Lcom/google/android/gms/internal/tx;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/tx;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzcfS:Lcom/google/android/gms/internal/tx;

.field public static final enum zzcfT:Lcom/google/android/gms/internal/tx;

.field private static final synthetic zzcfU:[Lcom/google/android/gms/internal/tx;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/tx;

    const-string v1, "User"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/tx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/tx;->zzcfS:Lcom/google/android/gms/internal/tx;

    new-instance v0, Lcom/google/android/gms/internal/tx;

    const-string v1, "Server"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/tx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/tx;->zzcfT:Lcom/google/android/gms/internal/tx;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/tx;

    sget-object v1, Lcom/google/android/gms/internal/tx;->zzcfS:Lcom/google/android/gms/internal/tx;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/tx;->zzcfT:Lcom/google/android/gms/internal/tx;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/tx;->zzcfU:[Lcom/google/android/gms/internal/tx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/tx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/tx;->zzcfU:[Lcom/google/android/gms/internal/tx;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/tx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/tx;

    return-object v0
.end method
