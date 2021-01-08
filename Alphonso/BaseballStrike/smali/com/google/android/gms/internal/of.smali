.class final Lcom/google/android/gms/internal/of;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzcaB:I

.field public static final enum zzcaC:I

.field public static final enum zzcaD:I

.field private static final synthetic zzcaE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/internal/of;->zzcaB:I

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/of;->zzcaC:I

    sput v1, Lcom/google/android/gms/internal/of;->zzcaD:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/of;->zzcaE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method
