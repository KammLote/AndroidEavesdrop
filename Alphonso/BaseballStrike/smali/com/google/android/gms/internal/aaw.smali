.class public final Lcom/google/android/gms/internal/aaw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaKz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private final zzcno:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<[B>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/aaw;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/aaw;->zzaKz:Ljava/util/List;

    iput-wide p3, p0, Lcom/google/android/gms/internal/aaw;->zzcno:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v1, p0, Lcom/google/android/gms/internal/aaw;->mContext:Landroid/content/Context;

    const-string v2, "frc"

    iget-object v3, p0, Lcom/google/android/gms/internal/aaw;->zzaKz:Ljava/util/List;

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/gms/internal/il;

    invoke-direct {v5}, Lcom/google/android/gms/internal/il;-><init>()V

    iget-wide v6, p0, Lcom/google/android/gms/internal/aaw;->zzcno:J

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/im;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/google/android/gms/internal/il;J)V

    return-void
.end method
