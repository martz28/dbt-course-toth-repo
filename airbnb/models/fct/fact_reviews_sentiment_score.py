from textblob import TextBlob


def get_sentiment(text):
    return TextBlob(text).sentiment.polarity


def model(dbt, session):
    dbt.config(
        materialized = "table",
        packages = ["textblob", "snowflake-connector-python[pandas]"]
    )

    fact_reviews_df = dbt.ref("fact_reviews").to_pandas()

    fact_reviews_df["SENTIMENT"] = fact_reviews_df["REVIEW_TEXT"].apply(get_sentiment)

    # return final dataset (Pandas DataFrame)
    return fact_reviews_df